package dabepizyb
{
   import flash.utils.getDefinitionByName;
   import vyso.Tokyhoqid;
   import vyso.Luvuteb;
   import flash.display.DisplayObject;
   import flash.events.Event;


   public class Gut extends Object
   {
      {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
      }

      public function Gut(param1:Tokyhoqid) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this._factory=param1;
         this._factory.addEventListener(Luvuteb.zutok,this.gemi);
         this._factory.addEventListener(Luvuteb.zagyhyhi,this.lewe);
         return;
      }

      private static var rito:Class;

      private static const bykadov:Boolean = dir();

      private static function dir() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         try
         {
            rito=getDefinitionByName("mx.core::UIComponent") as Class;
         }
         catch(error:Error)
         {
         }
         return !(rito==null);
      }

      private var _factory:Tokyhoqid;

      private function gemi(param1:Luvuteb) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var mediator:Object = null;
         var displayObject:DisplayObject = null;
         var event:Luvuteb = param1;
         mediator=event.mediator;
         displayObject=event.view as DisplayObject;
         if(!displayObject)
         {
            this.jiwigy(event.view,mediator);
            return;
         }
         displayObject.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         if((bykadov)&&displayObject is rito&&!displayObject["initialized"])
         {
            displayObject.addEventListener("creationComplete",new function(param1:Event):void
            {
               displayObject.removeEventListener("creationComplete",arguments.callee);
               if(_factory.vudupo(displayObject,event.mapping))
               {
                     jiwigy(displayObject,mediator);
               }
               return;
               });
            }
            else
            {
               this.jiwigy(displayObject,mediator);
            }
            return;
      }

      private function lewe(param1:Luvuteb) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:DisplayObject = param1.view as DisplayObject;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
         if(param1.mediator)
         {
            this.wypygowa(param1.mediator);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._factory.goci(param1.target);
         return;
      }

      private function jiwigy(param1:Object, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param2.hasOwnProperty("viewComponent"))
         {
            param2.viewComponent=param1;
         }
         if(param2.hasOwnProperty("initialize"))
         {
            param2.initialize();
         }
         return;
      }

      private function wypygowa(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.hasOwnProperty("destroy"))
         {
            param1.destroy();
         }
         return;
      }
   }

}