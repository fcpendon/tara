<template>
    <div class="forecast row" v-if="forecasts.length">
        <div class="col">
            <div class="row">
                <div class="col my-3 text-center">
                    <h4>5-day weather forecast in {{ this.city }}</h4>
                </div>
            </div>

            <div class="card-deck">
                <div class="card bg-light text-center" v-for="forecast in forecasts">
                    <div class="card-body">
                        <div>{{ forecast.date }}</div>

                        <div class="row">
                            <div class="col-4">
                                <img :src="'https://openweathermap.org/img/w/' + forecast.icon + '.png'" />
                            </div>
                            <div class="col-8 text-left my-auto">
                                <h5 class="card-title">{{ forecast.weather }}</h5>
                            </div>
                        </div>

                        <small>
                            <div>High: {{ forecast.temp_max }} &#8451</div>
                            <div>Ave: {{ forecast.temp }} &#8451</div>
                            <div>Low: {{ forecast.temp_min }} &#8451</div>
                        </small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['country', 'city'],
        data () {
            return {
                forecasts: [],
            }
        },
        mounted () {
            axios
                .get(`/api/${ this.country }/${ this.city }/forecast`)
                .then(response => this.forecasts = response.data)
        }
    }
</script>