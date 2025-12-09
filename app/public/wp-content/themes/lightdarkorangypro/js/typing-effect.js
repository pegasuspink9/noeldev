document.addEventListener('DOMContentLoaded', function() {
    const textElement = document.getElementById('typewriter-text');
    
    // The phrases you want to rotate through
    const phrases = [
        "I like to do codes and design",
        "I love to make a responsive layout",
        "I like to code from scratch"
    ];

    let currentPhraseIndex = 0;
    let currentCharacterIndex = 0;
    let isDeleting = false;
    let isWaiting = false;

    function type() {
        const currentPhrase = phrases[currentPhraseIndex];

        // Determine text to display based on whether we are deleting or typing
        if (isDeleting) {
            textElement.textContent = currentPhrase.substring(0, currentCharacterIndex - 1);
            currentCharacterIndex--;
        } else {
            textElement.textContent = currentPhrase.substring(0, currentCharacterIndex + 1);
            currentCharacterIndex++;
        }

        // Default typing speed
        let typeSpeed = 100;

        // Make deleting faster than typing
        if (isDeleting) {
            typeSpeed = 50; 
        }

        // Logic check
        if (!isDeleting && currentCharacterIndex === currentPhrase.length) {
            // Finished typing the sentence. Wait 2 seconds.
            typeSpeed = 2000; 
            isDeleting = true;
        } else if (isDeleting && currentCharacterIndex === 0) {
            // Finished deleting. Switch to a NEW RANDOM phrase.
            isDeleting = false;
            typeSpeed = 500; // Small pause before typing next one
            
            // Pick a random index that isn't the same as the current one
            let newIndex;
            do {
                newIndex = Math.floor(Math.random() * phrases.length);
            } while (newIndex === currentPhraseIndex && phrases.length > 1);
            
            currentPhraseIndex = newIndex;
        }

        setTimeout(type, typeSpeed);
    }

    // Start the loop
    if(textElement) {
        type();
    }
});