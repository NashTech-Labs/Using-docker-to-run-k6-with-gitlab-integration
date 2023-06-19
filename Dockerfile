FROM loadimpact/k6

COPY test.js /test.js

CMD ["run", "/test.js"]
