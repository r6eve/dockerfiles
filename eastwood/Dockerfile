FROM clojure:openjdk-14-lein-2.9.1-alpine
LABEL maintainer="r6eve179f@gmail.com"

RUN echo '(defproject dummy "" :dependencies [[jonase/eastwood "0.3.6" :exclusions [org.clojure/clojure]]])' > project.clj \
 && lein deps \
 && rm project.clj

RUN echo '{:user {:dependencies [[jonase/eastwood "0.3.6" :exclusions [org.clojure/clojure]]] :plugins [[jonase/eastwood "0.3.6"]] :eastwood {:linters [:all]}}}' > /root/.lein/profiles.clj

CMD ["lein", "eastwood"]
