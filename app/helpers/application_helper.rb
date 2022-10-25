module ApplicationHelper
  def page_title(page_title = '', admin = false)
    base_title = if admin
                  'Muksearch (管理画面)'
                 else
                  'Muksearch'
                 end

    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end

  def active_if(path)
    path == controller_path ? 'active' : ''
  end

  def default_meta_tags
    {
      site: 'Muksearch',
      title: '数クリックでモッパン動画が検索できるサービス',
      reverse: true,
      separator: '|',
      description: 'わずか4クリックでモッパン動画の検索ができるサービスです。日本語＆韓国で検索できるから、沢山の動画を手軽に楽しむことができます！',
      keywords: 'モッパン',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'Muksearch',
        title: 'わずか4クリックでモッパン動画が検索できるサービスです',
        description: 'わずか4クリックでモッパン動画の検索ができるサービスです。日本語＆韓国で検索できるから、沢山の動画を手軽に楽しむことができます！', 
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
    }
  end
end