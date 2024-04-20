<template>
    <div id="about-page" class="block">
        <div class="block">
            <h1 class="title is-1">About This Project</h1>
        </div>

    </div>
    <div class="container is-fluid">
        <div class="box has-background-link-95">
            <h2 class="title is-4">How It Started</h2>
            <p class="block">In the summer of 2009, I was selected for a Junior Ranger Ambassador internship with the
                National Park Service (NPS). I had never heard of the Junior Ranger program before then, but these
                programs exist at hundreds of NPS sites. They allow kids to learn about a location by completing
                activities, usually in a Junior Ranger booklet. When finished, kids are awarded a Junior Ranger badge
                for the specific site they're visiting and are sworn in by a real ranger.</p>
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
            <h2 class="title is-4">Making the Database</h2>
        </div>

        <div class="box">
            <h2 class="title is-4">Future Plans</h2>
            <p class="block">There is a lot I'd still like to do with this project. Ideas for the future include:</p>
            <ul id="future-features">
                <li>Searching by Site Name</li>
                <li>Searching by Date Established</li>
                <li>Searching by Area</li>
                <li>Add state locations to the detailed site view</li>
                <li>Add designation(s) to detailed site view</li>
                <li>Include pictures from an outside API to make the results page more attractive</li>
                <li>Create user accounts so users can track sites they've visited and Jr Ranger programs they've completed
                </li>
                <li>Allow users to attach reviews and/or pictures to sites they've visited</li>
            </ul>
        </div>

        <div class="box">
            <h2 class="title is-4">Credit & Thanks</h2>
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

#future-features {
    list-style-type: disc;
    list-style-position: outside;
    padding-left: 1rem;
}
</style>