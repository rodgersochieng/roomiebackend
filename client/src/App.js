import React, { useEffect, useState } from "react";
import Homepage from "./components/Homepage";
import Login from "./pages/Login";
import NavBar from "./components/NavBar";
import Account from "./components/Account";
import { BrowserRouter, Routes, Route } from "react-router-dom";

function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (!user) return <Login onLogin={setUser} />;

  return (
    <BrowserRouter>
      <div className="App">
        <NavBar user={user} setUser={setUser} />
        <Routes>
          <Route path={"/"} element={<Homepage user={user} />} />
          <Route path={"/homepage"} element={<Homepage />} />
          <Route path={"/account"} element={<Account />} />
        </Routes>
      </div>
    </BrowserRouter>
  );
}

export default App;
