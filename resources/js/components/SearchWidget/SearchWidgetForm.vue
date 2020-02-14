<template>
    <div class="search-form row">
        <div class="col">
            <div class="row">
                <div class="col">
                    <div class="input-group mb-2">
                        <input type="text" v-model="name" class="form-control" placeholder="Pizza, Beer, etc." @keyup.enter="searchLocation" autofocus>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary input-group-text" @click="searchLocation">&#128269;</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-6">
                    <label for="radius">Range: <span v-text="radius" class="radius"></span> km</label>
                    <input type="range" class="custom-range" v-model="radius" min="0" max="100" step="5" @change="adjustMin">
                </div>
                <div class="col-6">
                    <label for="radius">Limit: <span v-text="limit" class="limit"></span> results</label>
                    <input type="range" class="custom-range" v-model="limit" min="10" max="50" step="10">
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
                name: '',
                radius: 10,
                limit: 10,
                results: []
            }
        },
        methods: {
            searchLocation () {
                if (this.name.length === 0)
                    return
                var params = {
                    'name': this.name,
                    'radius': this.radius,
                    'limit': this.limit
                }
                axios
                    .post(`/api/${ this.country }/${ this.city }/search`, params)
                    .then(response => this.results = response.data.response.venues)
                    .finally(() => this.$emit('searchDone', this.results))
            },
            adjustMin () {
                if (this.radius == 0)
                    this.radius = 1
            }
        }
    }
</script>