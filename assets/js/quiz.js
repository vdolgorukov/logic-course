document.addEventListener('DOMContentLoaded', function() {
  const quizContainer = document.getElementById('quiz');
  const resultsContainer = document.getElementById('results');
  const submitButton = document.getElementById('submit');
  
  if (quizContainer) {
    const questions = [
      {
        question: "Какой тег используется для создания заголовка первого уровня в HTML?",
        answers: {
          a: "<h1>",
          b: "<head>",
          c: "<header>"
        },
        correctAnswer: "a"
      },
      {
        question: "Какой язык используется для стилизации веб-страниц?",
        answers: {
          a: "JavaScript",
          b: "HTML",
          c: "CSS"
        },
        correctAnswer: "c"
      }
    ];

    function buildQuiz() {
      const output = [];
      
      questions.forEach((currentQuestion, questionNumber) => {
        const answers = [];
        
        for (const letter in currentQuestion.answers) {
          answers.push(
            `<label>
              <input type="radio" name="question${questionNumber}" value="${letter}">
              ${letter}: ${currentQuestion.answers[letter]}
            </label>`
          );
        }
        
        output.push(
          `<div class="question">${currentQuestion.question}</div>
          <div class="answers">${answers.join('')}</div>`
        );
      });
      
      quizContainer.innerHTML = output.join('');
    }

    function showResults() {
      const answerContainers = quizContainer.querySelectorAll('.answers');
      let numCorrect = 0;
      
      questions.forEach((currentQuestion, questionNumber) => {
        const answerContainer = answerContainers[questionNumber];
        const selector = `input[name=question${questionNumber}]:checked`;
        const userAnswer = (answerContainer.querySelector(selector) || {}).value;
        
        if (userAnswer === currentQuestion.correctAnswer) {
          numCorrect++;
          answerContainers[questionNumber].style.color = 'green';
        } else {
          answerContainers[questionNumber].style.color = 'red';
        }
      });
      
      resultsContainer.innerHTML = `${numCorrect} из ${questions.length}`;
    }
    
    buildQuiz();
    
    if (submitButton) {
      submitButton.addEventListener('click', showResults);
    }
  }
});
