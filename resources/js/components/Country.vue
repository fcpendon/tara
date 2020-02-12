<template>
    <div class="country">
        <div @click="get_cities(country.name)">
            <h1>{{ country.name }}</h1>
        </div>

        <div class="row row-cols-2" v-if="showCities">
            <div v-for="city in cities">
                <div class="col city" @click="go_to(city.name)">
                    <h4>{{ city.name }}</h4>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['country'],
        data () {
            return {
                cities: [],
                showCities: true,
            }
        },
        methods: {
            get_cities: function (country) {
                axios
                    .get(`api/${country}/cities`)
                    .then(response => this.cities = response.data)
                this.showCities = true
            },
            go_to: function (city) {
                axios
                    .get(`api/${this.country.name}/${city}`)
                    .then(response => console.log(response.data))
                this.showCities = false
            }
        }
    }
</script>

<style scoped>
    div.country div.city {
        border: solid 1px grey;
        padding: 50px;
    }
</style>