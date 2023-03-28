from flask import Flask, render_template, request, url_for

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html", title="Brainfuck")

@app.route("/kontaktskjema", methods = ["POST", "GET"])
def kontaktskjema():
    if request.method == "POST":
        return render_template("displaystuff.html",
            titel="Display form",
            name=request.form["Navn"],
            email=request.form["Epostadresse"],
            b_day=request.form["Fødselsdato"],
            web_url=request.form["Webadresse"],
            grade=request.form["Klassenavn"],
            msg=request.form["Meldingsboks"]
        )
    else:
        return render_template("kontaktskjema.html", title="Kontak skjema")

if __name__ == "__main__":
    app.run()