// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"

import { Socket } from 'phoenix'
import LiveSocket from 'phoenix_live_view'

import Vue from 'vue'

import Item from './vue/components/item.vue'

Vue.component('item', Item);

let LiveViewHooks = {}

LiveViewHooks.ItemMounter = {
  mounted() {
    new Vue({el: this.el});
  },
  updated() {
    console.log("update");
  }
}

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
let liveSocket = new LiveSocket("/live", Socket, {params: {_csrf_token: csrfToken}, hooks: LiveViewHooks});

// connect if there are any LiveViews on the page
liveSocket.connect()
