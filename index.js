const { Keystone } = require("@keystonejs/keystone");
const { Text } = require("@keystonejs/fields");
const { GraphQLApp } = require("@keystonejs/app-graphql");
const { AdminUIApp } = require("@keystonejs/app-admin-ui");
const { StaticApp } = require("@keystonejs/app-static");

const { KnexAdapter: Adapter } = require("@keystonejs/adapter-knex");
const PROJECT_NAME = "todo";
const adapterConfig = {
  knexOptions: {
    connection: process.env.DB_URL,
  },
};

//hi
const keystone = new Keystone({
  adapter: new Adapter(adapterConfig),
});

keystone.createList("Todo", {
  schemaDoc: "A list of things which need to be done",
  fields: {
    name: { type: Text, schemaDoc: "This is the thing you need to do" },
  },
});

module.exports = {
  keystone,
  apps: [
    new GraphQLApp(),
    new StaticApp({ path: "/", src: "public" }),
    new AdminUIApp({ name: PROJECT_NAME, enableDefaultRoute: true }),
  ],
};
