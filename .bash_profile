for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

source /usr/local/etc/bash_completion.d/pass
source /usr/local/etc/bash_completion.d/ssh

# from `brew info python`
export PATH=/usr/local/opt/python/libexec/bin:$PATH
