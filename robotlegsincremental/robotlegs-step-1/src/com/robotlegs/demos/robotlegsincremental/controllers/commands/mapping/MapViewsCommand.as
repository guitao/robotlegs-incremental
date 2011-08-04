package com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping
{
	import com.robotlegs.demos.robotlegsincremental.controllers.events.MappingsEvent;
	import com.robotlegs.demos.robotlegsincremental.views.mediators.ApplicationMediator;
	import org.robotlegs.mvcs.Command;

	/**
	 *
	 * @author [Timur] & [Ondina D. F.]
	 *
	 */
	public class MapViewsCommand extends Command
	{
		[Inject]
		public var event:MappingsEvent;

		override public function execute():void
		{
			trace("[Impl] [Command] MapViewsCommand.execute()");
			mediatorMap.mapView(ContextView, ApplicationMediator, null, true, false);

			this.dispatch(new MappingsEvent(MappingsEvent.MAPPING_COMPLETE));
		}
	}
}
