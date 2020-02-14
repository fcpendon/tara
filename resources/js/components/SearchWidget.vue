<template>
    <div class="search row">
        <div class="col">
            <div class="row">
                <div class="col my-3 text-center">
                    <h4>Discover nearby establishments in {{ this.city }}!</h4>
                </div>
            </div>

            <search-widget-form @searchDone="getResults" :country="country" :city="city" />
            <search-widget-result :city="city" :results="searchResults" />
        </div>
    </div>
</template>

<script>
    import SearchWidgetForm from './SearchWidget/SearchWidgetForm'
    import SearchWidgetResult from './SearchWidget/SearchWidgetResult'

    export default {
        components: { SearchWidgetForm, SearchWidgetResult },
        props: ['country', 'city'],
        data () {
            return {
                searchResults: null
            }
        },
        methods: {
            getResults (results) {
                this.searchResults = results
            }
        }
    }
</script>