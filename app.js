document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    fetch('/api/users/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ username, password })
    })
    .then(response => response.json())
    .then(data => {
        if (data) {
            // Handle successful login
            window.location.href = 'profile.html';
        } else {
            // Handle login failure
            alert('Invalid credentials');
        }
    })
    .catch(error => console.error('Error:', error));
});
