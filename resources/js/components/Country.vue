<template>
    <div class="country container" v-show="canShowDetails">
        <country-info @countryLoaded="showDetails" :country="country" />
        <country-city-list :country="country" v-if="canShowDetails" />
    </div>
</template>

<script>
    import CountryInfo from './Country/CountryInfo'
    import CountryCityList from './Country/CountryCityList'

    export default {
        components: { CountryInfo, CountryCityList },
        props: ['country'],
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