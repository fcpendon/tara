<template>
    <div class="container mb-3" id="app">
        <logo />
        <router-view />
    </div>
</template>

<script>
    import Logo from './components/Logo.vue'

    export default {
        components: { Logo }
    }
</script>