# Real-time Captions in Video Chat
This generates real-time captions in a video chat app.  Currently it uses metered.ca for the video chat app.  

In this app, we grab an audio stream from the user's computer and then send that over a WebSocket to AssemblyAI for real-time transcription. Once AssemblyAI begins transcribing, we display the text in the browser. This is accomplished using Express for our backend and Vanilla JavaScript with the npm package [recordrtc](https://www.npmjs.com/package/recordrtc) for our frontend.

## How To Install and Run the Project

#### ❗Important❗

- Before running this app, you need to upgrade your AssemblyAI account. The real-time API is only available to upgraded accounts at this time.
- Running the app before upgrading will cause an **error with a 402 status code.** ⚠️
- To upgrade your account you need to add a card. You can do that in your dashboard [here](https://app.assemblyai.com/)!

#### Instructions

1. Clone the repo to your local machine.
2. Open a terminal in the main directory housing the project. In this case `realtime-transcripts-assemblyAI`.
3. Run `yarn install` to ensure all dependencies are installed.
4. Add your AssemblyAI key to line 13 of [`server.js`](https://github.com/AssemblyAI/realtime-transcription-browser-js-example/blob/62e07e1d2a7ee2e13349c4e817b048e41334c4ec/js/server.js#L13)
5. Start the server with the command `yarn start` (will run the assemblyAI websocket on port 8000 and the metered.video frontend on port 3333).

## Further Documentation
- [AssemblyAI Real-Time Documention](https://docs.assemblyai.com/overview/real-time-transcription)
- [recordrtc](https://www.npmjs.com/package/recordrtc)
- [Express](https://expressjs.com/)
- [Metered](https://metered.ca)

