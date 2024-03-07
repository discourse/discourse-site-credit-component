import Component from "@glimmer/component";
import { inject as service } from "@ember/service";
import icon from "discourse-common/helpers/d-icon";
import i18n from "discourse-common/helpers/i18n";

export default class SiteCredit extends Component {
  @service site;

  get encodedDomain() {
    return btoa(window.location.hostname);
  }

  <template>
    <a
      class="discourse-site-credit"
      href="https://discover.discourse.org/powered-by/{{this.encodedDomain}}"
      nofollow="true"
    >
      <span class="discourse-site-credit__content">
        <span class="discourse-site-credit__logo--icon">{{icon
            "fab-discourse"
          }}</span>
        <span>{{i18n (themePrefix "powered_by")}}</span>
      </span>
    </a>
  </template>
}
