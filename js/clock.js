/*global document */

function getCurrentTime() {
	const now = new Date();
	const hours = now.getHours();
	const minutes = now.getMinutes();

	const paddedMinutes = minutes.toString().padStart(2, '0');
	return `${hours}:${paddedMinutes}`;
}

function updateClock() {
	document.getElementById('clock').textContent = getCurrentTime();
}

updateClock();
setInterval(updateClock, 1000 * 60);
