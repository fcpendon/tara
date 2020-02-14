<template>
    <div class="city-info row" :style="{ 'background-image': `url('/img/${ this.country }_${ this.city }.jpg')`}" v-if="cityInfo">
        <div class="dark-box p-5 col">
            <div class="row">
                <router-link :to="{ name: 'country', params: { country: country } }"><h2>&#8592;</h2></router-link>
                <div class="col"><h2>{{ city }}</h2></div>
            </div>
            <div class="row">
                <p>{{ cityInfo.description }}</p>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['country', 'city'],
        data () {
            return {
                cityInfo: null
            }
        },
        mounted () {
            axios
                .get(`/api/${ this.country }/${ this.city }`)
                .then(response => this.cityInfo = response.data)
                .catch(error => this.$router.push({ name: 'home' }))
                .finally(() => this.$emit('cityLoaded'))
        }
    }
</script>

<style scoped>
    div.city-info {
        background-position: center;
        background-size: cover;
    }
</style>