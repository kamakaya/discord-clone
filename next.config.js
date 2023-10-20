/** @type {import('next').NextConfig} */
const nextConfig = {
    webpack: (config) => {
        config.externals.push({
            "utf-9-validate": "commonjs utf-8-validate",
            bufferutil: "commonjs bufferutil"
        })
    },
    images: {
        domains: [
            "utfs.io"
        ]
    }
}

module.exports = nextConfig
