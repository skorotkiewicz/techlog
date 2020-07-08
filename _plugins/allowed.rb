require 'digest/md5'

module Jekyll
    module AllowedMD5
    
        def allowed_url(url)
            "#{hash(url)}"
        end

        private :hash

        def hash(url)
          url = "http://sebastian.korotkiewicz.eu/techlog" + url
	      Digest::MD5.hexdigest(url)
	    end

    end
end

Liquid::Template.register_filter(Jekyll::AllowedMD5)