# 🥃  GoGraphQL
 ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) ![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white) ![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white) ![GraphQL](https://img.shields.io/badge/-GraphQL-E10098?style=for-the-badge&logo=graphql&logoColor=white)

<img src=".github/readme/thumbnail.gif" alt="Gif rodando os testes do app">

> Projeto de uma API GraphQL feita em Go para o cadastro de cursos e categorias e a possibilidade de suas respectivas listagens.

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

- Docker

## 🚀 Rodando o Projeto

Para instalar, siga estas etapas:

Crie um clone do repositório

```
git clone https://github.com/Seiixas/go-graphql.git
```

Acesse a pasta:

```bash
cd go-graphql
```

Gere um build da imagem:

```
docker build -t <seu-nome>/go-graphql .
```

Inicie o container:

```bash
docker run --name golang -p 8080:8080 <seu-nome>/go-graphql 
```

## 🧑🏽‍💻  Utilizando o projeto

Basta acessar a rota `localhost:8080` em sua máquina para abrir o playground do GraphQL. Lá, é possível realizar as seguintes `queries` e `mutations`:
```graphql
mutation createCategory {
  createCategory(
    input:{name:"Tecnologia", description: "Cursos de Tecnologia"}) {
    name,
    description
  }
}

mutation createCourse {
  createCourse(
    input: {
      name: "FullCycle",
      description: "3.0",
      categoryId: "d5dd4dfb-1208-413e-86bd-08c6c84dedbd"
    }
  ) {
    id,
    name,
    description
  }
}

query queryCoursesWithCategories {
  courses {
    id
    name
    description
    category {
      id
      name
    }
  }
}

query queryCategoriesWithCourses {
  categories{
    id
    name
    courses {
      id
      name
      description
    }
  }
}

query queryCategories {
  categories {
    id
    name
    description
  }
}

query queryCourses {
  courses { id, name, description }
}
```