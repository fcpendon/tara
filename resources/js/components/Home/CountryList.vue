<template>
    <div class="countries row row-cols-1" v-if="countries.length">
        <div class="col mb-3" v-for="country in countries">
            <router-link :to="{ name: 'country', params: { country: country.name } }">
                <div :style="{ 'background-image': `url('/img/${ country.name }.jpg')` }" class="country banner">
                    <h1>{{ country.name }}</h1>
                </div>
            </router-link>
        </div>
    </div>
</template>

<script>
    export default {
        data () {
            return {
                countries: []
            }
        },
        mounted () {
            axios
                .get('/api/countries')
                .then(response => this.countries = response.data)
        }
    }
</script>

<style scoped>
    div.country:hover {
        border-color: white;
        transition: 0.25s;
    }
</style>>