import React, { useState } from "react"

// a comment oh my zsh
function reactexample() {

    const [state, setState] = useState("someState")

    useEffect(() => {
        console.log(state)


        console.log("something")
        setState("a state")

        let object = {
            value: "a string"
        }

        setState(object)
    }, [])

    return (
        <div>
            <Jumbo.Container>
                <p>Body</p>
            </Jumbo.Container>
        </div>
    )
}

export default reactexample
