module Jekyll
  module SidebarItemFilter
    def docs_sidebar_link(item)
      return sidebar_helper(item, 'docs')
    end

    def ios_sidebar_link(item)
      return sidebar_helper(item, 'ios')
    end

    def android_sidebar_link(item)
      return sidebar_helper(item, 'android')
    end

    def unity_sidebar_link(item)
        return sidebar_helper(item, 'unity')
    end

    def windows_sidebar_link(item)
      return sidebar_helper(item, 'windows')
    end

    def guides_sidebar_link(item)
          return sidebar_helper(item, 'guides')
    end

    def mobile_usecases_sidebar_link(item)
          return sidebar_helper(item, 'mobile-usecases')
    end

    def panel_sidebar_link(item)
        return sidebar_helper(item, 'panel')
    end

    def javascript_sidebar_link(item)
          return sidebar_helper(item, 'javascript')
    end

    def react_native_sidebar_link(item)
          return sidebar_helper(item, 'react-native')
    end

    def react_native_bridge_sidebar_link(item)
          return sidebar_helper(item, 'react-native-bridge')
    end

    def rest_api_sidebar_link(item)
          return sidebar_helper(item, 'rest-api')
    end

    def sidebar_helper(item, group)
      forceInternal = item["forceInternal"]

      subItems = item["subitems"]
      pageID = @context.registers[:page]["id"]
      itemID = item["id"]
      if item["href"] != nil
        href = "#{pageID}.html##{item["href"]}" || "/#{group}/#{itemID}.html"
        itemID = pageID
      else
        href = item["href"] || "/#{group}/#{itemID}.html"
      end
      classes = []
      if pageID == itemID
        classes.push("active")
      end
      if item["href"] && (forceInternal == nil)
        classes.push("external")
      end
      className = classes.size > 0  ? " class=\"#{classes.join(' ')}\"" : ""

      result = ""
      if subItems != nil && pageID == itemID
        result = "<ul><a href=\"#{href}\"#{className}>#{item["title"]}</a>"
        subItems.each {|curItem|
          result += "<li><a style='font-size: 12px;' href=\"#{pageID}.html##{curItem["href"]}\">#{curItem["title"]}</a></li>"
        }
        result += "</ul>"
      else
        result = "<a href=\"#{href}\"#{className}>#{item["title"]}</a>"
      end
      return result
    end

  end
end

Liquid::Template.register_filter(Jekyll::SidebarItemFilter)
