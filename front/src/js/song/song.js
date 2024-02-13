import app from "../config/preference.js";

let pref = app;


export async function fetchSong(songId) {
  const serverUrl = pref.app.api.protocol + pref.app.api.host + pref.app.api.song.fetch + songId;

  return await fetch(serverUrl, {
    method: 'GET',
    headers: {
      'Content-Type': 'application/json',
    },
  })
  .then(response => response.json())
  .then(result => {
    return result;
    })
}
