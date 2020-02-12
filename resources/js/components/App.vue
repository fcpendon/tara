<template>
    <div class="container">
        <div class="text-center">
            <div>
                <h1>TARA</h1>
            </div>

            <div v-for="country in countries">
                <country :country="country"/>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data () {
            return {
                countries: [],
            }
        },
        mounted () {
            axios
                .get('api/countries')
                .then(response => this.countries = response.data)
        }
    }
</script>

<style scoped>
    div.container { margin-top: 50px }
</style>