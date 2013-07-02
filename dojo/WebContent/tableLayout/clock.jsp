<div style = "float:right; vertical-align:top">
<p>
   <% 
      // get client locale
      java.util.Locale locale = request.getLocale();

      // get DateFormat for client's Locale
      java.text.DateFormat dateFormat = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.LONG,
    		  java.text.DateFormat.LONG, locale );

   %>

   <%= dateFormat.format( new java.util.Date() ) %>
</p> 
</div>
