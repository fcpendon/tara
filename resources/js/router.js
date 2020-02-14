import Vue from 'vue'
import Router from 'vue-router'

import Home from './components/Home.vue'
import Country from './components/Country.vue'
import City from './components/City.vue'

Vue.use(Router)

export default new Router({
	mode: 'history',
	routes: [
		{
			path: '/',
			name: 'home',
			component: Home
		},
		{
			path: '/:country',
			name: 'country',
			component: Country,
			props: true
		},
		{
			path: '/:country/:city',
			name: 'city',
			component: City,
			props: true
		}
	]
})