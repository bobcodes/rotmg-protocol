package ryqerovo
{
[CLASS1022]   import flash.utils.getDefinitionByName;
   import wufyba.Pyluwej;
   import wufyba.Hujygyzi;
   import flash.display.DisplayObject;
   import flash.events.Event;


   public class Zerygy extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zerygy(param1:Pyluwej) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this._factory=param1;
         this._factory.addEventListener(Hujygyzi.syg,this.vedemyb);
         this._factory.addEventListener(Hujygyzi.helebupej,this.pena);
         return;
      }

      private static var tutudoq:Class;

      private static const tysaz:Boolean = biguhefu();

      private static function biguhefu() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         try
         {
            tutudoq=getDefinitionByName("mx.core::UIComponent") as Class;
         }
         catch(error:Error)
         {
         }
         return !(tutudoq==null);
      }

      private var _factory:Pyluwej;

      private function vedemyb(param1:Hujygyzi) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var mediator:Object = null;
         var displayObject:DisplayObject = null;
         var event:Hujygyzi = param1;
         mediator=event.mediator;
         displayObject=event.view as DisplayObject;
         if(!displayObject)
         {
            this.gojujuta(event.view,mediator);
            return;
         }
         displayObject.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         if((tysaz)&&displayObject is tutudoq&&!displayObject["initialized"])
         {
            displayObject.addEventListener("creationComplete",new function(param1:Event):void
            {
               displayObject.removeEventListener("creationComplete",arguments.callee);
               if(_factory.wyz(displayObject,event.mapping))
               {
                     gojujuta(displayObject,mediator);
               }
               return;
               });
            }
            else
            {
               this.gojujuta(displayObject,mediator);
            }
            return;
      }

      private function pena(param1:Hujygyzi) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:DisplayObject = param1.view as DisplayObject;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
         if(param1.mediator)
         {
            this.muzyt(param1.mediator);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._factory.vin(param1.target);
         return;
      }

      private function gojujuta(param1:Object, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

      private function muzyt(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.hasOwnProperty("destroy"))
         {
            param1.destroy();
         }
         return;
      }
   }
[/CLASS]
}