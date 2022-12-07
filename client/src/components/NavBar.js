import React from "react";
import { Link } from "react-router-dom";
import { Button } from "../styles";
export default function NavBar({ user, setUser }) {
  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }
  return (
    <>
      <di className="navbar">
        <div className="logo">
          <p>
            <span>ROOM</span>ie
          </p>
        </div>
        <div className="navs">
          <ul className="components">
            <li>
              <Link className="home" to="/">
                Home
              </Link>
            </li>
            <li>
              <Link className="booking" to="/account">
                Account
              </Link>
            </li>
            <li>
              <Button variant="outline" onClick={handleLogoutClick}>
                Logout
              </Button>
            </li>
          </ul>
        </div>
      </di>
    </>
  );
}
