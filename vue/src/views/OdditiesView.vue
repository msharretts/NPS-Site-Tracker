<template>
    <div id="oddities-page" class="block">
        <div class="block">
            <h1 class="title is-1">Oddities & Inconsistencies</h1>
        </div>
        <p class="block">Working on this project, I came across so many oddities and inconsistencies. Some of those
            are cataloged here for anyone interested.</p>
    </div>
    <div class="container is-fluid">
        <div class="box">
            <h2 class="title is-4">How Many NPS Sites Are There?</h2>
            <p class="block">The easy answer to this question is <span class="has-text-weight-bold">429,</span> which 
                is the number listed on the National Park Service website. The more you dig into this though, the 
                more confusing it becomes.
            </p>

        </div>
        <div class="box">
            <h2 class="title is-4">Call Letter Oddities</h2>
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
            <p class="block">SACN</p>
        </div>

        <div class="box">
            <h2 class="title is-4">December 2, 1980</h2>
        </div>

        <div class="box">
            <h2 class="title is-4">River Designations</h2>
            <p class="block">Most NPS sites follow a straightforward naming practice of
                <span class="has-text-weight-bold">'Name' + 'Designation'.</span>
                There are two official river designations within the National Park Service. There are
                <span class="has-text-weight-bold">National Rivers</span>
                and
                <span class="has-text-weight-bold">National Wild and Scenic Rivers.</span>
                While a few rivers follow convention, many do not. Note that some leave off the
                <span class="has-text-weight-bold">'National'</span>
                as in the case of
                <a href="https://www.nps.gov/obed/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Obed Wild and Scenic River</a>
                or
                <a href="https://www.nps.gov/rigr/index.htm" :target="'_blank'"
                    class="title is-5 has-text-success-5-invert">Rio Grande Wild and Scenic River.</a>
                Others are even more varied; here are some examples:
            </p>
            <ul class="block river-lists">
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
                        class="title is-5 has-text-success-5-invert">Great Egg Harbor National Scenic and Recreational River</a> 
                    is a <span class="has-text-weight-bold">National Wild and Scenic River</span>
                </li>
                <li><a href="https://www.nps.gov/upde/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Upper Delaware Scenic and Recreational River</a> 
                        is a <span class="has-text-weight-bold">National Wild and Scenic River</span>
                </li>
            </ul>
            <p class="block">As if that's not enough, there are some rivers that are named as rivers and recreation areas.
                There are some recreation areas that are listed as rivers and recreation areas. Each of these only has one
                actual designation though, as opposed to some other NPS sites, which have multiple designations.
            </p>
        </div>
        <div class="box">
            <h2 class="title is-4">Other Designation Oddities</h2>
            <p>Washington Monument</p>
            <p>Names not following naming conventions</p>
        </div>
        <div class="box">
            <h2 class="title is-4">Junior Ranger Inconsistencies</h2>
            <p>National Mall sites</p>
            <p>sites not listed as having junior ranger programs that do</p>
        </div>
        <div class="box">
            <h2 class="title is-4">Sites with Multiple Locations</h2>
            <p class="block">While it's not unusual to have an NPS site span more than one state, especially in the case of
                National Scenic Trails, a couple of sites are notable for having multiple locations in noncontiguous
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
            <p>The
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
        </div>
        <div class="box">
            <h2 class="title is-4">Sites not included as NPS sites</h2>
            <p>hiking trails</p>
            <p>websites</p>
        </div>
    </div>
</template>

<script>


</script>

<style scoped>
#oddities-page {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.river-lists {
    list-style-type: disc;
    list-style-position: outside;
    padding-left: 3rem;
}

li {
    line-height: 2rem;;
}
</style>