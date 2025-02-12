const isPullRequest = process.env.GITHUB_EVENT_NAME === 'pull_request';

module.exports = {
    branches: ["master", { name: "semantic", prerelease: true }],
    verifyConditions: [
        () => {
            if (isPullRequest) {
                console.log('This run was triggered by a pull request and will create a pre-release.');
            }
        }
    ],
    prepare: [
        {
            path: '@semantic-release/npm',
            npmPublish: false,
        },
        {
            path: '@semantic-release/github',
            assets: [
                { path: 'dist/**', label: 'Distribution' }
            ],
            successComment: false,
            failComment: false,
            releasedLabels: false,
            addReleases: 'bottom',
            prerelease: isPullRequest ? 'prerelease' : false,
        }
    ],
};