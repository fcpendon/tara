<template>
    <div class="city container" v-show="canShowDetails">
        <city-info @cityLoaded="showDetails" :country="country" :city="city" />
        <weather-widget :country="country" :city="city" v-if="canShowDetails" />
        <search-widget :country="country" :city="city" v-if="canShowDetails" />
    </div>
</template>

<script>
    import CityInfo from './City/CityInfo'
    import WeatherWidget from './WeatherWidget'
    import SearchWidget from './SearchWidget'

    export default {
        components: { CityInfo, WeatherWidget, SearchWidget },
        props: ['country', 'city'],
        data () {
            return {
                canShowDetails: false
            }
        },
        methods: {
            showDetails () {
                this.canShowDetails = true
            }
        }
    }
</script>

<style scoped>
    div.city {
        border: 1px solid black;
        background-color: white;
    }
</style>