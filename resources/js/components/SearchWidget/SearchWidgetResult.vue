<template>
    <div class="search-results row" v-if="results !== null">
        <div class="col">
            <div class="row" v-if="results.length">
                <div class="col my-3">
                    <span>Results:</span>

                    <ul class="list-unstyled">
                        <li class="media p-1" v-for="result in results">
                            <img class="mx-3 my-auto" :src="result.categories.length ? result.categories[0].icon.prefix + 'bg_32.png' : ''" />

                            <div class="media-body row">
                                <div class="col-6 my-auto">
                                    <h5>{{ result.name }}</h5>
                                </div>

                                <div class="col-6">
                                    <div>Category: {{ result.categories.length ? result.categories[0].shortName : '' }}</div>
                                    <div>Address: {{ result.location.address }}</div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="sorry row" v-else>
                <div class="col text-center my-auto">
                    <h4>Sorry, no matches found in {{ city }} :(</h4>
                </div>
            </div>
        </div>
    </div>

    <div class="empty row" v-else></div>
</template>

<script>
    export default {
        props: ['city', 'results'],
    }
</script>

<style scoped>
    div.search-results ul.list-unstyled li {
        border-bottom: solid 1px grey;
    }
    div.search-results img {
        width: 32px;
    }
    div.sorry, div.empty {
        height: 150px;
    }
</style>