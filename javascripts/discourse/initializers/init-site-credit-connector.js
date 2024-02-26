import { apiInitializer } from "discourse/lib/api";
import SiteCredit from "../components/site-credit";

export default apiInitializer("1.14.0", (api) => {
  api.renderAfterWrapperOutlet("topic-list-bottom", SiteCredit);
  api.renderInOutlet("topic-below-suggested", SiteCredit);
});
