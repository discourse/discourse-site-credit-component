import { apiInitializer } from "discourse/lib/api";
import SiteCredit from "../components/site-credit";

export default apiInitializer("1.14.0", (api) => {
  api.renderInOutlet("after-main-outlet", SiteCredit);
});
