import Component from "@glimmer/component";
import icon from "discourse-common/helpers/d-icon";
import DTooltip from "float-kit/components/d-tooltip";
import i18n from "discourse-common/helpers/i18n";

export default class SiteCredit extends Component {
  get encodedRef() {
    return btoa(encodeURIComponent(window.location.hostname));
  }

  <template>
    <DTooltip
      @arrow={{true}}
      @identifier="discourse-site-credit"
      @placement="bottom"
    >
      <:trigger>
        <a
          id="discourse-site-credit"
          href="https://www.discourse.org/pricing?ref={{this.encodedRef}}"
          nofollow="true"
        >
          <span class="discourse-site-credit__logo--color"></span>
          <span class="discourse-site-credit__logo--icon">{{icon
              "fab-discourse"
            }}</span>
          <span>{{i18n (themePrefix "powered_by")}}</span>
        </a>
      </:trigger>
      <:content>
        {{i18n (themePrefix "cta")}}
      </:content>
    </DTooltip>
  </template>
}
