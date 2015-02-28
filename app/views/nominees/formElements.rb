#form
 <div class="field">
    <%= f.label :committee_check %><br>
    <%= f.check_box :committee_check %>
  </div>
  <div class="field">
    <%= f.label :committee_check_count %><br>
    <%= f.number_field :committee_check_count %>
  </div>
  <div class="field">
    <%= f.label :chairman_check %><br>
    <%= f.check_box :chairman_check %>
  </div>
  <div class="field">
    <%= f.label :confirmed %><br>
    <%= f.number_field :confirmed %>
  </div>
  <div class="field">
    <%= f.label :not_confirmed %><br>
    <%= f.number_field :not_confirmed %>
  </div>
  <div class="field">
    <%= f.label :abstained %><br>
    <%= f.number_field :abstained %>
  </div>