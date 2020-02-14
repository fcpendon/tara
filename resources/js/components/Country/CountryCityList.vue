<template>
    <div class="cities row row-cols-1" v-if="cities.length">
        <div class="cities-section col my-3">
            <h3>Cities</h3>
        </div>

        <div class="col mb-3" v-for="city in cities">
            <router-link :to="{ name: 'city', params: { country: country, city: city.name } }">
                <div :style="{ 'background-image': `url('/img/${ country }_${ city.name }.jpg')` }" class="city banner row">
                    <h1>{{ city.name }}</h1>
                </div>
            </router-link>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['country'],
        data () {
            return {
                cities: []
            }
        },
        mounted () {
            if (!this.country)
                return
            axios
                .get(`/api/${ this.country }/cities`)
                .then(response => this.cities = response.data)
        }
    }
</script>

<style scoped>
    div.cities-section {
        background: rgb(0, 0, 0, 0.6);
        color: white;
    }
    div.city:hover {
        border-color: white;
        transition: 0.25s;
    }
</style>