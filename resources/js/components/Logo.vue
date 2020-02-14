<template>
    <div class="title banner">
	    <router-link :to="{ name: 'home' }">
            <h1>TARA!</h1>
	    </router-link>
	</div>
</template>

<style scoped>
	div.banner {
		border: none;
	}
    div.title h1 {
        color: black;
    }
    div.title a {
        text-decoration: none;
    }
</style>