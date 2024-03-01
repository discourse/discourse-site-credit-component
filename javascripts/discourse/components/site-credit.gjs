import Component from "@glimmer/component";
import { inject as service } from "@ember/service";
import icon from "discourse-common/helpers/d-icon";
import i18n from "discourse-common/helpers/i18n";
import DTooltip from "float-kit/components/d-tooltip";

export default class SiteCredit extends Component {
  @service site;

  get encodedDomain() {
    return btoa(window.location.hostname);
  }

  <template>
    {{#if this.site.mobileView}}
      <div id="discourse-site-credit-mobile">
        <a
          id="discourse-site-credit"
          href="https://discover.discourse.org/powered-by/{{this.encodedDomain}}"
          nofollow="true"
        >
          <span class="discourse-site-credit__logo--color"></span>
          <span class="discourse-site-credit__logo--icon">{{icon
              "fab-discourse"
            }}</span>
          <span>{{i18n (themePrefix "powered_by")}}</span>
        </a>
      </div>
    {{else}}
      <DTooltip @arrow={{true}} @identifier="discourse-site-credit">
        <:trigger>
          <a
            id="discourse-site-credit"
            href="https://discover.discourse.org/powered-by/{{this.encodedDomain}}"
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
    {{/if}}
  </template>
}
