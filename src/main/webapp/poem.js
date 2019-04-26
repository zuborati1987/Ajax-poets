function onPoemLoad(poemDto) {
    poemId = poemDto.poem.id;

    const poemNameSpanEl = document.getElementById('poem-title');
    const poemPercentageSpanEl = document.getElementById('poem-body');

    poemNameSpanEl.textContent = poemDto.poem.title;
    poemPercentageSpanEl.innerHTML = poemDto.poem.body;
}

function onPoemResponse() {
    if (this.status === OK) {
        clearMessages();
        showContents(['poem-content', 'back-to-profile-content', 'logout-content']);
        onPoemLoad(JSON.parse(this.responseText));
    } else {
        onOtherResponse(poemsContentDivEl, this);
    }
}

function onWordCountButtonClick() {
    const poemText = document.getElementById('poem-body').textContent.toLowerCase();
    const searchPhrase = document.getElementById('word-count-search').value.toLowerCase();
    const count = (poemText.match(new RegExp(searchPhrase, 'g')) || []).length;
    alert('Occurences: ' + count);
}
