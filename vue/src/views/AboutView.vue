<template>
    <div id="about-page" class="block">
        <div class="block">
            <h1 class="title is-1">About This Project</h1>
        </div>

    </div>

    <div class="container is-fluid">

        <div class="box">
            <h2 class="title is-4">How It Started</h2>
            <p class="block">In the summer of 2009, I was selected for a Junior Ranger Ambassador internship with the
                National Park Service (NPS). I had never heard of the Junior Ranger program before then, but these
                programs exist at hundreds of NPS sites. They allow kids to learn about a location by completing
                activities, usually in a Junior Ranger booklet. When finished, kids are awarded a Junior Ranger badge
                for the specific site they're visiting and are sworn in by an NPS ranger.</p>
            <div id="image-bar" class="block is-flex is-justify-content-space-evenly">
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/depojr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/alpojr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/zionjr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/manzjr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/flnijr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/akjr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/macajr.jpg" />
                </figure>
            </div>

            <p>I became a huge fan of the Junior Ranger program and the National Park Service over that summer. Ever
                since then I've been visiting NPS sites whenever I can, and I usually check out their Junior Ranger
                program while I'm there. (Yes, this is a program intended for kids, but most sites don't mind adults
                participating, and it's a great way to learn about a site.)
            </p>
        </div>

        <div class="box">
            <h2 class="title is-4">Future Plans</h2>
            <p class="block">There is a lot I'd still like to do with this project. Ideas for the future include:</p>
            <ul id="future-features" class="about-list">
                <li>Searching by <span class="has-text-weight-bold">site name</span></li>
                <li>Searching by <span class="has-text-weight-bold">date established</span></li>
                <li>Searching by <span class="has-text-weight-bold">area</span></li>
                <li>Add <span class="has-text-weight-bold">state locations</span> to the detailed site view</li>
                <li>Add <span class="has-text-weight-bold">designation(s)</span> to detailed site view</li>
                <li>Include pictures from an outside API to make the results page more attractive</li>
                <li>Create <span class="has-text-weight-bold">user accounts</span> so users can <span
                        class="has-text-weight-bold">track sites</span> they've visited and Jr Ranger programs they've
                    completed</li>
                <li>Allow users to attach <span class="has-text-weight-bold">reviews and/or pictures</span> to sites they've
                    visited</li>
                <li>Adding <span class="has-text-weight-bold">fee information</span> to the database</li>
            </ul>
        </div>

        <div class="box">
            <h2 class="title is-4">Credit & Thanks</h2>
            <p class="block"> Much of my initial data came from Wikipedia. Individual pages are listed in the
                README file.</p>

            <p class="block">Information that was not available on Wikipedia was gathered from countless National 
                Park Service resources. Those include: 
            </p>
            <ul class="block about-list">
                <li>
                    <a href="https://www.nps.gov/subjects/camping/campground.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Campground Information</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/aboutus/national-park-system.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Designation Information & State Locations</a>
                </li>
                <li>
                    <a href="https://www.nps.gov/kids/parks-with-junior-ranger-programs.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">Junior Ranger Programs</a>
                </li>
                <li>
                    <span class="has-text-weight-bold">Date Established</span> when not on Wikipedia 
                        was taken from many dozen <a href="http://npshistory.com/index.htm" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">NPS Archive</a> pages   
                </li>
                <li>
                    <span class="has-text-weight-bold">Area</span> not available on Wikipedia was found 
                    <a href="https://web.archive.org/web/20210113132417/https://www.nps.gov/subjects/lwcf/upload/NPS-Acreage-12-31-2020.pdf" :target="'_blank'"
                        class="title is-5 has-text-success-5-invert">here</a>
                </li>
            </ul>
            <p class="block">Thanks to <span class="has-text-weight-bold">Walt Impellicceiri</span> and 
                <span class="has-text-weight-bold">Tom Anderson</span> for always being available when I had 
                questions or needed help. Thanks also to <span class="has-text-weight-bold">Andie Fullmer</span> 
                for listening to the ongoing saga of creating this database and for offering feedback.</p>         
            <div id="image-bar-2" class="block is-flex is-justify-content-space-evenly">
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/monojr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/devajr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/zionjr2.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/klgojr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/jofljr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/yosejr.jpg" />
                </figure>
                <figure class="image is-128x128">
                    <img class="is-rounded" src="../assets/junior-ranger-pics/sekijr.jpg" />
                </figure>
            </div>
        </div>
    </div>
</template>

<script>


</script>

<style>
#about-page {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.about-list {
    list-style-type: disc;
    list-style-position: outside;
    padding-left: 3rem;
}
</style>