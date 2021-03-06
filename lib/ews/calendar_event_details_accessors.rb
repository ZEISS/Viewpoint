=begin
This file is a cotribution to Viewpoint; the Ruby library for Microsoft Exchange Web Services.

Copyright © 2013 Mark McCahill <mark.mccahill@duke.edu>

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
=end

module Viewpoint::EWS::CalendarEventDetailsAccessors
  include Viewpoint::EWS

  def event_subject( the_event )
    the_event[:calendar_event][:elems][3][:calendar_event_details][:elems][1][:subject][:text]
  end

  def event_location( the_event )
    the_event[:calendar_event][:elems][3][:calendar_event_details][:elems][2][:location][:text]
  end

end # Viewpoint::EWS::CalendarEventDetailsAccessors
