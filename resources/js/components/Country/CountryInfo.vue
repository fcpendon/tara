<template>
    <div class="country-info row" :style="{ 'background-image': `url('/img/${ country }.jpg')` }" v-if="countryInfo">
        <div class="dark-box p-5 col">
            <div class="row">
                <router-link :to="{ name: 'home' }"><h2>&#8592;</h2></router-link>
                <div class="col"><h2>{{ country }}</h2></div>
            </div>
            <div class="row">
                <p>{{ countryInfo.description }}</p>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['country'],
        data () {
            return {
                countryInfo: null
            }
        },
        mounted () {
            axios
                .get(`/api/${ this.country }`)
                .then(response => this.countryInfo = response.data)
                .catch(error => this.$router.push({ name: 'home' }))
                .finally(() => this.$emit('countryLoaded'))
        }
    }
</script>

<style scoped>
    div.country-info {
        background-position: center;
        background-size: cover;
        border: solid 1px black;
    }
</style>