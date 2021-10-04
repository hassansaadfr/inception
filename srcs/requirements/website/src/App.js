import './App.css';

function App() {
  return (
    <div className="App">
      <div style={{background: '#282c34', height: '60px'}}>
      <div style={{display: 'flex', width:'100%%', justifyContent:'space-between', height:'100%' }}>
          <a style={{margin:'auto auto'}} className='App-link' href="/" >Wordpress</a>
          <div className="vl"></div>
          <a style={{margin:'auto auto'}} className='App-link' href="/netdata" >Netdata</a>
          <div className="vl"></div>
          <a style={{margin:'auto auto'}} className='App-link' href="/adminer" >Adminer</a>
        </div>
      </div>

      <header className="App-header">

        <img src={"https://cdn.intra.42.fr/users/large_hsaadaou.jpg"} className="App-logo" alt="logo" />
        <p>
          Inception 42 project
        </p>
        <div style={{ display: 'flex', width: '40vmin', justifyContent: 'space-between' }}>

          <button>
            <a
              className="App-link"
              href="https://profile.intra.42.fr/users/hsaadaou"
              target="_blank"
              rel="noopener noreferrer"
            >
              Intra profile
            </a>
          </button>
          <button>
            <a
              className="App-link"
              href="https://github.com/hassansaadfr"
              target="_blank"
              rel="noopener noreferrer"
            >
              Github
            </a>
          </button>

        </div>
      </header>
    </div>
  );
}

export default App;
