import Vue from "vue";
import axios from "axios";

let url = "http://localhost:8000";
if (process.env.NODE_ENV == "production") {
  url = "https://glacial-harbor-86827.herokuapp.com";
}

const api = axios.create({
  baseURL: url
});

Vue.prototype.$axios = api;

export { api };
