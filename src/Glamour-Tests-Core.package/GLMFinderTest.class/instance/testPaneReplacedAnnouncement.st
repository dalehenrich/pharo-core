tests
testPaneReplacedAnnouncement
	| browser count |
	count := 0.
	browser := GLMFinder new.
	browser when: GLMPaneReplaced do: [ :ann | count := count + 1 ].
	browser startOn: #a.
	self assert: count equals: 0.
	(browser panes first port: #selection) value: #b.
	self assert: count equals: 0.
	(browser panes second port: #selection) value: #c.
	self assert: count equals: 0.
	(browser panes first port: #selection) value: #d.
	self assert: count equals: 1.
	browser entity: #e.
	self assert: count equals: 2