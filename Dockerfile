FROM centos:centos7
MAINTAINER Felix Z. Hoffmann <felix11h.dev@gmail.com>

# adapted from http://www.rampmeupscotty.com/blog/2015/03/31/dockerizing-jekyll/

RUN yum -y install git gcc gcc-c++ make ruby-devel rubygems
RUN gem install jekyll jekyll-paginate jekyll-sitemap therubyracer bundler json --no-doc --no-ri

WORKDIR /blog

#ENTRYPOINT ["jekyll", "serve", "--host=0.0.0.0"]
