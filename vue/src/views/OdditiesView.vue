<template>
    <div id="oddities-page" class="block">
        <div id="oddities-title-div" class="block">
            <figure id="park-geek-figure" class="image is-96x96">
                <img class="is-rounded" src="../assets/junior-ranger-pics/park-geek.jpg" />
            </figure>
            <div id="oddities-h1-div" class="block">
                <h1 class="title is-1">Oddities & Inconsistencies</h1>
            </div>

        </div>
        <p class="block">Working on this project, I came across so many oddities and inconsistencies. Some of those
            are cataloged here for anyone interested.</p>
    </div>


    <div class="container is-fluid">
        <div v-if="boxOneCollapsed" id="oddities-box-1-collapsed" class="box">
            <div id="box-1-title-c" class="box-title">
                <h2 class="title is-4">How Many NPS Sites Are There?</h2>
                <h4 @click="changeCollapsed(1)" class="title is-6">EXPAND</h4>
            </div>
        </div>

        <div v-else id="oddities-box-1-expanded" class="box">
            <div id="box-1-title-e" class="box-title">
                <h2 class="title is-4">How Many NPS Sites Are There?</h2>
                <h4 @click="changeCollapsed(1)" class="title is-6">COLLAPSE</h4>
            </div>

            <p class="block">The easy answer to this question is <span class="has-text-weight-bold">429,</span> which
                is the number listed on the National Park Service website. The more you dig into this though, the
                more confusing it becomes. You may notice that if you hit search on the home page, without selecting
                any search criteria, <span class="has-text-weight-bold">420</span> sites will be returned. This is
                because there are nine parks and monuments that have two designations.
            </p>
            <ul class="block oddities-list">
                <li>
                    <a href="https://www.nps.gov/gaar/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert"> Gates of the Arctic National Park and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/dena/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Denali National Park and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/wrst/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert"> Wrangell-St. Elias National Park and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/lacl/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Lake Clark National Park and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/katm/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Katmai National Park and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/ania/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Aniakchak National Monument and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/glba/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Glacier Bay National Park and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/crmo/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Craters of the Moon National Monument and Preserve</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/grsa/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Great Sand Dunes National Park and Preserve</a>
                </li>
            </ul>
            <p class="block">These sites are all listed as either a <span class="has-text-weight-bold">National Park</span>
                or a <span class="has-text-weight-bold">National Monument</span> while also being a
                <span class="has-text-weight-bold">National Preserve.</span> While technically, these are two separate
                'sites', according to NPS, each site listed above has only one web page and is administered
                as a single unit, rather than two separate units.
            </p>
            <p class="block">Additionally, the National Park Service web site lists
                <span class="has-text-weight-bold">175 'Related Areas'</span> that are not official NPS sites, but
                that have some NPS involvement. Many of these sites have their own NPS web pages.
            </p>
        </div>

        <div v-if="boxTwoCollapsed" id="oddities-box-2-collapsed" class="box">
            <div id="box-2-title-c" class="box-title">
                <h2 class="title is-4">Designation Oddities</h2>
                <h4 @click="changeCollapsed(2)" class="title is-6">EXPAND</h4>
            </div>
        </div>

        <div v-else id="oddities-box-2-expanded" class="box">
            <div id="box-2-title-e" class="box-title">
                <h2 class="title is-4">Designation Oddities</h2>
                <h4 @click="changeCollapsed(2)" class="title is-6">COLLAPSE</h4>
            </div>
            <p class="block">The
                <a href="https://www.nps.gov/wamo/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Washington Monument</a>
                in addition to being a <span class="has-text-weight-bold">National Memorial</span> rather than a
                <span class="has-text-weight-bold">National Monument</span> is one of only a handful of sites not
                following the naming convention of listing the type of site as part of the name. To be fair,
                <span class="has-text-weight-bold">Washington Monument National Memorial</span> would be a mouthful.
            </p>
            <p class="block">There are 16 NPS sites that fall into three battlefield categories:
                <span class="has-text-weight-bold">National Battlefield, National Battlefield Site,</span> and
                <span class="has-text-weight-bold">National Battlefield Park.</span> One further site with
                'Battlefield' in the name is classified as a <span class="has-text-weight-bold">Military Park,</span>
                which seems reasonable. However, there are also four sites with 'Battlefield' in the name that are
                not designated as National Battlefields. They are:
            </p>
            <ul class="block oddities-list">
                <li>
                    <a href="https://www.nps.gov/waba/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Washita Battlefield National Historic Site</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/paal/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Palo Alto Battlefield National Historical Park</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/libi/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Little Bighorn Battlefield National Monument*</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/waba/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Mill Springs Battlefield National Monument*</a>
                </li>
            </ul>
            <p class="block">
                <span class="title is-5 has-text-success-5-invert">*</span> There is a likely explanation for why 
                these are National Monuments. Monuments can be created with only a Presidential signature, while other 
                types of sites require Congressional approval. It's much easier to establish a National 
                Monument, therefore, several NPS sites began as Monuments and were later redesignated, 
            </p>
        </div>


        <div v-if="boxThreeCollapsed" id="oddities-box-3-collapsed" class="box">
            <div id="box-3-title-c" class="box-title">
                <h2 class="title is-4">River Designations</h2>
                <h4 @click="changeCollapsed(3)" class="title is-6">EXPAND</h4>
            </div>
        </div>

        <div v-else id="oddities-box-3-expanded" class="box">
            <div id="box-3-title-e" class="box-title">
                <h2 class="title is-4">River Designations</h2>
                <h4 @click="changeCollapsed(3)" class="title is-6">COLLAPSE</h4>
            </div>
            <p class="block">Most NPS sites follow a straightforward naming practice of
                <span class="has-text-weight-bold">'Name' + 'Designation'.</span>
                There are two official river designations within the National Park Service. There are
                <span class="has-text-weight-bold">National Rivers</span>
                and
                <span class="has-text-weight-bold">National Wild and Scenic Rivers.</span>
                While a few rivers follow naming convention, many do not. Note that some leave off the
                <span class="has-text-weight-bold">'National'</span>
                as in the case of
                <a href="https://www.nps.gov/obed/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Obed Wild and Scenic River</a>
                or
                <a href="https://www.nps.gov/rigr/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Rio Grande Wild and Scenic River.</a>
                Others are even more varied; here are some examples:
            </p>
            <ul class="block oddities-list">
                <li><a href="https://www.nps.gov/ozar/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Ozark National Scenic Riverways</a>
                    is a <span class="has-text-weight-bold">National River</span></li>
                <li><a href="https://www.nps.gov/alag/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Alagnak Wild River</a>
                    is a <span class="has-text-weight-bold">National Wild and Scenic River</span></li>
                <li><a href="https://www.nps.gov/blue/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Bluestone National Scenic River</a>
                    is a <span class="has-text-weight-bold">National Wild and Scenic River</span></li>
                <li><a href="https://www.nps.gov/mnrr/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Missouri National Recreational River</a>
                    is a <span class="has-text-weight-bold">National Wild and Scenic River</span></li>
                <li><a href="https://www.nps.gov/sacn/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Saint Croix National Scenic Riverway</a>
                    is a <span class="has-text-weight-bold">National Wild and Scenic River</span></li>
                <li><a href="https://www.nps.gov/greg/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Great Egg Harbor National Scenic and Recreational
                        River</a>
                    is a <span class="has-text-weight-bold">National Wild and Scenic River</span>
                </li>
                <li><a href="https://www.nps.gov/upde/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Upper Delaware Scenic and Recreational River</a>
                    is a <span class="has-text-weight-bold">National Wild and Scenic River</span>
                </li>
            </ul>
            <p class="block">Also, the
                <a href="https://www.nps.gov/biso/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Big South Fork National River and Recreation Area</a>
                and the
                <a href="https://www.nps.gov/miss/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Mississippi National River and Recreation Areas</a>
                are both only listed as <span class="has-text-weight-bold">National Rivers</span> and not as
                <span class="has-text-weight-bold">National Recreation Areas.</span> On the other hand, the
                <a href="https://www.nps.gov/chat/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Chattahoochee River National Recreation Area</a>
                is the opposite, being listed as a <span class="has-text-weight-bold">National Recreation Area</span>
                but not a <span class="has-text-weight-bold">National River.</span>
            </p>
        </div>

        <div v-if="boxFourCollapsed" id="oddities-box-4-collapsed" class="box">
            <div id="box-4-title-c" class="box-title">
                <h2 class="title is-4">Sites with Multiple Locations</h2>
                <h4 @click="changeCollapsed(4)" class="title is-6">EXPAND</h4>
            </div>
        </div>

        <div v-else id="oddities-box-4-expanded" class="box">
            <div id="box-4-title-e" class="box-title">
                <h2 class="title is-4">Sites with Multiple Locations</h2>
                <h4 @click="changeCollapsed(4)" class="title is-6">COLLAPSE</h4>
            </div>
            <p class="block">While it's not unusual to have an NPS site span more than one state, especially in the case of
                National Scenic Trails, a few sites are notable for having multiple locations in noncontiguous
                states.
            </p>
            <p class="block">The
                <a href="https://www.nps.gov/mapr/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Manhattan Project
                    National Historical Park</a>
                is located in three cities:
                <span class="has-text-weight-bold">Hanford, Washington; Los Alamos, New Mexico;</span>
                and
                <span class="has-text-weight-bold">Oak Ridge, Tennessee.</span>
                All three sites share one webpage, as well as the <span class="has-text-weight-bold">MAPR</span>
                call letters, but each site has its own Junior Ranger booklet.
            </p>
            <p class="block">The
                <a href="https://www.nps.gov/klgo/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">
                    Klondike Gold Rush National Historical Park,</a>
                with the call letters <span class="has-text-weight-bold">KLGO,</span> is located in
                <span class="has-text-weight-bold">Skagway, Alaska,</span> but also has a
                <a href="https://www.nps.gov/klse/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Seattle Unit,</a>
                which has it's own call letters, <span class="has-text-weight-bold">KLSE,</span> a separate webpage,
                and its own Junior Ranger program.
            </p>
            <p class="block">The
                <a href="https://www.nps.gov/till/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Emmett Till and Mamie Till-Mobley National Monument </a>
                is located in
                <span class="has-text-weight-bold">Sumner and Glendora, Mississippi,</span>
                as well as
                <span class="has-text-weight-bold">Chicago, Illinois.</span>
                Both sites share a webpage and the call letters <span class="has-text-weight-bold">TILL.</span>
            </p>
        </div>

        <div v-if="boxFiveCollapsed" id="oddities-box-5-collapsed" class="box">
            <div id="box-5-title-c" class="box-title">
                <h2 class="title is-4">Call Letter Oddities</h2>
                <h4 @click="changeCollapsed(5)" class="title is-6">EXPAND</h4>
            </div>
        </div>

        <div v-else id="oddities-box-5-expanded" class="box">
            <div id="box-5-title-e" class="box-title">
                <h2 class="title is-4">Call Letter Oddities</h2>
                <h4 @click="changeCollapsed(5)" class="title is-6">COLLAPSE</h4>
            </div>
            <p class="block">Every NPS site has a unique set of call letters. These four letters typically come
                from the first four letters of sites with a one word name, or the first two letters of the first
                word and the first two letters of the second word of a multi-word park name.
            </p>
            <p class="block">You might then expect
                <a href="https://www.nps.gov/jeff/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Gateway Arch National Park</a>
                to have the call letters <span class="has-text-weight-bold">GAAR,</span> but those call letters
                belong to
                <a href="https://www.nps.gov/gaar/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Gates of the Arctic National Park and Preserve.</a>
                Instead, Gateway Arch National Park has <span class="has-text-weight-bold">JEFF</span> as its call
                letters. This is because the site was initially named
                <span class="has-text-weight-bold">Jefferson National Expansion Memorial.</span>
            </p>
            <p class="block"><a href="https://www.nps.gov/tule/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Tule Lake National Monument</a>
                and
                <a href="https://www.nps.gov/tusk/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Tule Springs Fossil Beds National Monument</a>
                would presumably have the call letters <span class="has-text-weight-bold">TULA</span>
                and <span class="has-text-weight-bold">TUSP</span> but instead use <span
                    class="has-text-weight-bold">TULE</span>
                and the humorous call letters <span class="has-text-weight-bold">TUSK.</span>
            </p>
            <p class="block">Other sites don't follow convention in order to prevent unfortunate call letter instances. For
                example
                <a href="https://www.nps.gov/cave/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Carlsbad Caverns National Park</a> has been
                designated with the call letters <span class="has-text-weight-bold">CAVE,</span> and
                <a href="https://www.nps.gov/lake/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Lake Mead National Recreation Area</a> uses
                <span class="has-text-weight-bold">LAKE.</span> Less unfortunate, and so more interesting,
                <a href="https://www.nps.gov/vall/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Valles Caldera National Preserve</a> uses
                <span class="has-text-weight-bold">VALL</span> as its call letters, perhaps so as not to be
                <span class="has-text-weight-bold">VACA?</span>
            </p>
            <p class="block">
                <a href="https://www.nps.gov/seki/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Sequoia National Park</a>
                and
                <a href="https://www.nps.gov/seki/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Kings Canyon National Park</a>
                are conjoined. While they technically have their own call letters,
                <span class="has-text-weight-bold">SEQU</span> and <span class="has-text-weight-bold">KICA</span>
                respectively, they are administered as one unit under the call letters
                <span class="has-text-weight-bold">SEKI.</span>
            </p>
            <p class="block">Occasionally call letters are changed when two sites would have the same letters. But here
                are sites that don't follow convention, even without any conflict between sites:</p>
            <ul class="block oddities-list">
                <li><a href="https://www.nps.gov/till/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Emmett Till and Mamie Till-Mobley National Monument</a>
                    has the call sign <span class="has-text-weight-bold">TILL</span></li>
                <li><a href="https://www.nps.gov/jazz/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">New Orleans Jazz National Historical Park</a>
                    uses <span class="has-text-weight-bold">JAZZ</span></li>
                <li><a href="https://www.nps.gov/perl/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Pearl Harbor National Memorial</a>
                    goes by <span class="has-text-weight-bold">PERL</span></li>
                <li><a href="https://www.nps.gov/wwim/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">World War I Memorial</a>
                    has call sign <span class="has-text-weight-bold">WWIM</span></li>
                <li><a href="https://www.nps.gov/wwii/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">World War II Memorial</a>
                    is designated <span class="has-text-weight-bold">WWII</span>
                </li>

            </ul>
        </div>
    </div>
</template>

<script>

export default {

    data() {
        return {
            boxOneCollapsed: true,
            boxTwoCollapsed: true,
            boxThreeCollapsed: true,
            boxFourCollapsed: true,
            boxFiveCollapsed: true,

        }
    },

    methods: {
        changeCollapsed(boxNum) {
            if (boxNum == 1) {
                this.boxOneCollapsed = !this.boxOneCollapsed;
            } else if (boxNum == 2) {
                this.boxTwoCollapsed = !this.boxTwoCollapsed;
            } else if (boxNum == 3) {
                this.boxThreeCollapsed = !this.boxThreeCollapsed;
            } else if (boxNum == 4) {
                this.boxFourCollapsed = !this.boxFourCollapsed;
            } else if (boxNum == 5) {
                this.boxFiveCollapsed = !this.boxFiveCollapsed;
            }
        }
    }
}

</script>

<style scoped>
#oddities-page {
    display: flex;
    flex-direction: column;
    align-items: center;
}

#oddities-title-div {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 90vw;
}

#oddities-h1-div {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 2rem;
}

#park-geek-figure {
    margin-right: 2rem;
}

.box-title {
    display: flex;
    justify-content: space-between;
}

.oddities-list {
    list-style-type: disc;
    list-style-position: outside;
    padding-left: 3rem;
}

li {
    line-height: 2rem;
}
</style>