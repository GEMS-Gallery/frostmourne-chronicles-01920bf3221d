import { backend } from 'declarations/backend';

document.addEventListener('DOMContentLoaded', async () => {
    const chapterNav = document.getElementById('chapter-nav');
    const chapterContent = document.getElementById('chapter-content');

    try {
        const chapters = await backend.getChapters();
        
        // Create navigation buttons
        chapters.forEach((chapter, index) => {
            const button = document.createElement('button');
            button.textContent = chapter.title;
            button.addEventListener('click', () => displayChapter(index));
            chapterNav.appendChild(button);
        });

        // Display the first chapter by default
        displayChapter(0);

    } catch (error) {
        console.error('Error fetching chapters:', error);
    }

    async function displayChapter(index) {
        try {
            const chapter = await backend.getChapter(index);
            if (chapter) {
                chapterContent.innerHTML = `
                    <h2>${chapter.title}</h2>
                    <p>${chapter.content}</p>
                `;
            } else {
                chapterContent.innerHTML = '<p>Chapter not found.</p>';
            }
        } catch (error) {
            console.error('Error fetching chapter:', error);
            chapterContent.innerHTML = '<p>Error loading chapter.</p>';
        }
    }
});
