package com.google.analytics.core
{
[CLASS1754]   import com.google.analytics.debug.DebugConfiguration;
   import com.google.analytics.debug.VisualDebugMode;


   public class Domain extends Object
   {
      public function Domain(param1:DomainNameMode=null, param2:String="", param3:DebugConfiguration=null) {
         super();
         _debug=param3;
         if(param1==null)
         {
            param1=DomainNameMode.auto;
         }
         _mode=param1;
         if(param1==DomainNameMode.custom)
         {
            this.name=param2;
         }
         else
         {
            _name=param2;
         }
         return;
      }

      public function get mode() : DomainNameMode {
         return _mode;
      }

      private var _mode:DomainNameMode;

      private var _debug:DebugConfiguration;

      public function set mode(param1:DomainNameMode) : void {
         _mode=param1;
         if(_mode==DomainNameMode.none)
         {
            _name="";
         }
         return;
      }

      private var _name:String;

      public function get name() : String {
         return _name;
      }

      public function set name(param1:String) : void {
         if(!(param1.charAt(0)==".")&&(_debug))
         {
            _debug.warning("missing leading period \".\", cookie will only be accessible on "+param1,VisualDebugMode.geek);
         }
         _name=param1;
         return;
      }
   }
[/CLASS]
}