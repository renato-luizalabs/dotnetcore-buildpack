export ASPNETCORE_URLS="http://+:$PORT"
export PATH="$PATH:$HOME/.heroku/dotnet:$HOME/.apt/usr/bin"
export LIBRARY_PATH="$LIBRARY_PATH:$HOME/.apt/usr/lib/x86_64-linux-gnu:$HOME/.apt/usr/lib/i386-linux-gnu:$HOME/.apt/usr/lib"
export apt_CONFIG_PATH="$apt_CONFIG_PATH:$HOME/.apt/usr/lib/x86_64-linux-gnu/aptconfig:$HOME/.apt/usr/lib/i386-linux-gnu/aptconfig:$HOME/.apt/usr/lib/aptconfig"
if [ -f ${HOME}/newrelic.config ]; then
    echo "CORECLR_NEWRELIC_HOME..."
    export CORECLR_NEWRELIC_HOME="${HOME}/.heroku/newrelic/newrelic-netcore20-agent"
    export CORECLR_ENABLE_PROFILING=1
    export CORECLR_PROFILER={36032161-FFC0-4B61-B559-F6C5D41BAE5A}
    export CORECLR_PROFILER_PATH=$CORECLR_NEWRELIC_HOME/libNewRelicProfiler.so
fi
