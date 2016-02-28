require 'uri'
require 'redis'

uri = URI.parse('URL_FROM_HEROKU_DASHBOARD')
redis = Redis.new(:host => uri.host, :port => uri.port, :password => 'PASSWORD_FROM_HEROKU_DASHBOARD')

#
#
redis.flushall
redis.set "corporate:prefixes:counter", 0
redis.set "corporate:verbs:counter", 0
redis.set "corporate:connectors:counter", 0
redis.set "corporate:adjectives:counter", 0
redis.set "corporate:nouns:counter", 0

redis.set "legal:prefixes:counter", 0
redis.set "legal:verbs:counter", 0
redis.set "legal:connectors:counter", 0
redis.set "legal:adjectives:counter", 0

redis.getset "corporate:prefixes:counter", 0
redis.getset "corporate:verbs:counter", 0
redis.getset "corporate:connectors:counter", 0
redis.getset "corporate:adjectives:counter", 0
redis.getset "corporate:nouns:counter", 0

redis.getset "legal:prefixes:counter", 0
redis.getset "legal:verbs:counter", 0
redis.getset "legal:connectors:counter", 0
redis.getset "legal:adjectives:counter", 0
redis.getset "legal:nouns:counter", 0

redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", '24/7', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'accentuated', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'actual', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'acute', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'adjusted', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'all-around', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'always-on', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'anticipatory', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'astonishing', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'award-winning', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'B2B', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'back-end', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'back-office', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'best-of-breed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'best-practices', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'better', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'bona fide', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'branded', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'branded', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'break-neck', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cafeteria-style', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'central', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cerebral', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cherished', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'clickable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'click-oriented', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'client', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'client/server', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'climactic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'close', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'closed-door', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'co-branded', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'collateral', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'collective', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'committed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'compiled', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'confidential', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cool', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cooperative', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'core', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cross-industry', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cross-media', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cross-organization', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cross-platform', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'crucial', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'custom', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'customer-driven', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'customized', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'cutting-edge', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'defacto', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'dependent', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'digital', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'distributed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'diversified', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'dot-com', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'downside', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'drilled-down', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'dynamic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'Earth-friendly', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'e-business', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'efficient', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'emergent', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'emerging', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'end-to-end', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'enterprise', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'e-tail', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'evangelic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'evangelistic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'evident', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'extensible', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'extreme', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'facilitated', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'first class', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'first-to-market', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'focused', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'formatted', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'front-end', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'fully qualified', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'fusioned', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'futuristic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'gamified', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'global', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'granular', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'green', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'ground-breaking', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'ground-zero', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'high-speed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'high-speed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'impactful', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'incremental', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'infiltrating', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'innovative', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'insightful', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'integrated', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'intellectual', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'intelligent', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'interactive', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'intuitive', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'invaluable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'just-in-time', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'keen', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'leading-edge', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'mapped', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'market-driven', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'market-sensitive', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'material', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'matrixed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'meshed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'mission-critical', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'mixed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'mobile', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'motivated', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'motivational', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'networkable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'new and unusual', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'new-fashioned', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'next-day', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'next-generation', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'omnipotent', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'one-to-one', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'on-the-go', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'open architecture', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'open-door', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'open-source', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'out-of-the-box', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'outside-in', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'outsourced', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'over-engineered', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'over-under', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'paradisiacal', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'partial', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'patterned', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'pending', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'penetrating', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'pilot', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'pipelined', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'plug-and-play', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'pointed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'politically correct', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'portable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'positioned', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'positive', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'potential vs. actual', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'precognizant', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'prescient', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'priceless', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'proactive (not reactive)', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'proactive', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'progressive', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'proprietary', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'proprietary', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'qualified', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'rapid-fire', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'rave', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'raw', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'reactive', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'real-time', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'red-lined', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'relational', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'renowned', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'revenuable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'revolutionary', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'robust', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'same-day', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'scalable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'seamless', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'secret', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'seven-habits-conforming', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'smoking', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'solutioned', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'spiritualistic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'spontaneous', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'state-of-the-art', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'sticky', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'strategic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'stratified', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'structured', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'subordinate', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'surgically targeted', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'synergistic', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'take-no-prisoners', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'thin', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'thoroughbred', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'three-pronged', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'thumbnailed', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'tiered', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'top-down', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'top-heavy', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'top-shelf', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'transparent', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'trend-setting', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'turn-key', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'ubiquitous', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'ultra-cool', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'unary', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'uncommon', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'unfamiliar', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'unified', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'unique', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'unmistakable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'up-and-over', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'upside', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'user-centric', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'value-added', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'venerable', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'ventures in', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'verified', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'vertical', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'virtual', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'virtualized', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'visionary', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'wall-to-wall', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'web-enabled', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'wide-open', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'wireless', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'world-class', {nx: true}
redis.set "corporate:adjectives:#{redis.incr('corporate:adjectives:counter')}", 'zero-deviation', {nx: true}


redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", ' ', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", ' ', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'a few', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'a leadership role in the', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'ad hoc', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'all', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'all-encompassing', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'connected', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'definitive', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'dimensional', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'flagship', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'industry-standard', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'infinity-plus', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'insourced', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'invisible', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'many', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'median', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'more', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'multiple', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'multiple', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'only the best', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'opaque', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'our', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", "our client's", {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'plugged-in', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'shifted', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'some', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'some face time with the', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'strategic', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'tactical', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'the', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'the best', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", "the company's", {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", "the competition's", {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", "the customer's", {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'the matrix of', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'the most', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", "tomorrow's", {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'unplugged', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'virtual', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'visible', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'warehouses full of', {nx: true}
redis.set "corporate:connectors:#{redis.incr('corporate:connectors:counter')}", 'your', {nx: true}


redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'action-items', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'affairs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'affinities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'algorithms of strategy', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'analogues', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'applications', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'aptitudes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'architectures', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'areas of influence', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'areas', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'arrays of clients', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'assumptions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'attainments', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'bandwidths', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'baselines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'bases', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'beginnings', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'bells and whistles', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'benefits', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'birthings', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'blips on the radar screen', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'body counts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'body languages', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'bonuses', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'boot camps', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'bottom lines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'brain dumps', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'brand awareness', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'brand recognition', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'brands', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'buckets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'budgets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'buying signs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'buzzes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'channel partners', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'channels', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'characteristics', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'circles of influence', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'click cliques', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'click-sploitations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'client competencies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'client criticalities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'client engagements', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'client preferences', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'client sensibilities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'client-vendor alloys', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'clock cycles', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'closing ratios', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'coalitions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'comfort zones', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'commission opportunities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'committees', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'communities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'company jewels', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'competencies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'competency streams', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'compilations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'conclusions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'conference calls', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'conjectures', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'constants', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'content', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'contents', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'contexts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'convergences', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'co-opetition', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'cost centers', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'costs of success', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'costs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'courses of action', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'CPU cycles', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'criteria', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'customer engagements', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'customer glidepaths', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'data mines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'data mining', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'data points', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'data translucencies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'definitions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'deliverables', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'deltas', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'demands', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'destinations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'disciplines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'distribution channels', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'distribution powerhouses', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'dividing lines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'dog and pony shows', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'e-commerce', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'e-customers', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'effects of synergy', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'efforts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'e-handshakes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'e-markets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'empowerments', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'enablements', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'entireties', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'enumerations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'e-revenues', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'e-services', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'eventualities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'examples', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'executions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'executive compensation plans', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'expediencies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'externalizations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'extranets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'fabrics of synergy', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'fax blasts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'feature sets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'features', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'fertile grounds', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'finish lines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'flashes in the pan', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'flood gates', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'focus groups', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'focuses', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'formalizations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'fulfillments', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'functionalities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'fusions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'futilities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'game plans', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'goal posts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'golden parachutes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", "'gotta haves'", {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'gravy trains', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'group synergies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'hot buttons', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'icing on the cakes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'ideals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'impacts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'implementations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'impressions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'incomes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'incubations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'incubators', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'industry road maps', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'inflows', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'information', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'infrastructures', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'initiatives', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'inputs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'integrities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'interconnections', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'interfaces', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'Internet appliances', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'Intranets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'knowledge streams', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'laser-like focuses on the bottom line', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'launches', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'laundry lists', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'layers of management', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'layouts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'leveraged synergies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'leverages', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'line items', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'litmus tests', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'living documents', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'management layers', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'managerial voids', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'margin deltas', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'margin spreads', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'margins', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'market trends', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'market voids', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'markets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'MBOs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'measurements', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'meetings', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'metrics', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'mind gems', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'mindshares', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'missions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'models', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'movers and shakers', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'multiplicities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'net-nets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'networks', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'niches', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'notions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'objections', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'objectives', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'opportunities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'organizations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'ouch factors', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'outcomes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'overviews', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'P&L sheets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'panic factors', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'paradigm shifts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'paradigms', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'parameters', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'partner pairings', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'partnerships', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'paths', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'patterns of change', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'patterns', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'penetrations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'pep rallies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'pipelines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'pixel densities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'platforms', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'portals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'positionings', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'positions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'preferences', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'presentations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'principles', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'probes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'product amalgams', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'productivities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'profiles', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'proposals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'punch lists', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'purposes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'quality circles', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'reality checks', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'reality improvements', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'recompenses', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'red flags', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'references', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'relationships', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'relevances', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'remunerations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'reorganizations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'reorgs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'reportables', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'resolutions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'resource inventories', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'resources', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'responsibilities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'revenewals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'revenue densities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'revenue injections', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'revenue points', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'revenues', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'RFPs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'ROIs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'safety valves', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'scatter factors', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'schemas', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'sensibilities', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'shots in the arm', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'shots in the dark', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'show-stoppers', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'signals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'significations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'silver bullets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'skill sets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'slide shows', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'smoke and mirrors presentations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'solutions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'space', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'spaces', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'spheres of influence', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'spin factors', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'standards', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'standards', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'stock options', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'stock prices', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'stock trends', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'strategies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'success positionings', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'success stories', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'sum totals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'supply lines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'synergies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'synergizations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'synergy factors', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'systems', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'tactical approaches', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'tactics', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'tactics', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'targets', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'team-building experiences', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'teams', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'technical playgrounds', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'technologies', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'technology overdrafts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'templates', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'tensile strengths', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'test balloons', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'tiers', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'TLAs', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'totals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'tractions', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'transformations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'trend lines', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'trends', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'turning points', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'universes', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'upshots', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'users', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'values', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'variables', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'venture capitalists', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'ventures', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'victory dances', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'views from 30,000 feet', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'virtualizations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'visualizations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'vortals', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'Vulcan mind-melds', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'webenues', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'webfronts', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'webifications', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'webinars', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'webtricity', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'wins', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'win-win situations', {nx: true}
redis.set "corporate:nouns:#{redis.incr('corporate:nouns:counter')}", 'yardsticks', {nx: true}


redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'A few of you are going to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "A good manager doesn't need to know how to do his subordinate's work.  Now, please", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'All future correspondence should refer to our initiative to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'An attribute of a good manager is that he/she knows how to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'An effective VP is one who will unilaterally', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Any good manager knows how to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Anybody could do your job.  But only I can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Are you a team player? Then you need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'As a member of the synergy improvement committee, you need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'As a team, we shall', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'As an executive, it is my privilege and duty to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "As they say in the CEO's office, we must", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Associates who criticize their manager are not team players.  They need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Associates who practice good work habits take the time to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'At your next client engagement, you should', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Attend to the details, and let the Vice Presidents', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Bathrooms in the workplace are an employee benefit.  I want you to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Being a CEO is not easy.  That's why I", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Clearly, you need to improve the way that you', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Customers choose us over the competition because we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Demonstrate a can-do attitude. Just', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Do as your manager does, and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Do one thing.  Do it right.  For example,', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Don't criticize your manager unless you", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Don't get bogged down in details.  Instead,", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Don't underestimate the value of associates who", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Dynamically, you can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Effective immediately, all associates will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Effectively, you must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Embrace the paradigm and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Embrace the synergy!  Leverage the enablement! Envision the focus!  And, finally,', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Evangelize solutions!  Enable paradigms!  Evolve synergy!  And', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Follow my example.  I', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "For the customer's sake, we must", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Foster synergy by fulcruming our leverage, and be sure to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Help your manager solution paradigms. Just', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I am adding additional quality circles so that we can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I am adding more vice presidents so that we can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I am creating breakout teams that will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I believe that it is essential that we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I have an MBA.  Therefore, I', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I have formed a quality committee to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I need a status report on how you', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I was a music major in college, but I am an effective manager because I', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'I will be gone three hours for lunch.  While I am away, I want you to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "If it doesn't help the bottom line, it's not worth doing.  But you should always", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'If you want to walk the walk and talk the talk, you have to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'In order to evangelize synergy, our paradigm requires that we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'In order to play in this space, we have to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'In order to take the elevator beyond the top floor, you need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'In our industry sector, the score is love-fifteen, so we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'In the new millennium, it is crucial that we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "In today's business model, we must", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Instead of wasting time questioning the competence of upper management, you should', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'It is important that we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'It is not too late to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "It's attitude, not altitude, that is important.  Therefore, you must", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Lead, follow, or', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Let's drill down to the core and", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Let's raise the bar and", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Let's run the flag up the flagpole and see if we can", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Leverage the technology delta and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Logically, we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Managers are often misunderstood.  But they always', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Many of you will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Morale is low.  Therefore, you must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'My degree in liberal arts qualifies me to be an executive.  Thus, I', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'New rule: Effective immediately, you shall', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "No executives were laid off in the recent'rightsizing'because they", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Now is a good time to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Now is the time for us to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Now that we are up to speed, you may want to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'One of your most significant objectives is to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our CEO paid a consultant $50,000 for the following advice:', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our consultant tells me that we should', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our customers will expect us to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our evangelistic strategic synergization requires that we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our executives are NOT overpaid.  They are the only ones who', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our executives know how to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our formula for success requires a new paradigm of synergy, and we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our goal is to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our objective is clear.  We must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our objective is to dynamically', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our solution is that we always', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our strategy requires a zero-deviation precision focus, and we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our success will be defined by how we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our success will be measured by how we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our synergy is defined by how we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our Vice President of Synergy empowers you to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our visionaries have hired consultants to them that we should', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Our VPs are concerned because you do not', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Please transcribe my voice messages to text.  Then,', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Position yourself for success.  Simply', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Program yourself for success, and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Put yourself in your boss's shoes.  They you can", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Quality thinking will lead you to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Quality, not quantity.  Also, let's see you", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Religiously,', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Revenue schmevenue!  It's the stock price that matters.  That's why we", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Rome wasn't built in a day. Now,", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Sales are down this quarter because no one took me seriously when I told you to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Seamlessly, you manager will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Since nothing is more certain than change, we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Some associates have remarked that I speak meaningless buzz-phrases.  Actually, I', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Some of you will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Some say the glass is half full; some say it is half empty.  You must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Stop what you are doing and give me a status report on how you', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Success and failure are opposites.  That is why we need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Success is not a crap-shoot if we', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Synergy leads to shared success, so we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Take a leadership role and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Take responsibility and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Take the customer's temperature and then you can", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Team effort is required, so you need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'The 411 on our new strategy is that we will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "The bar has been raised.  Let's see you", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'The board of directors would like you to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'The bottom line is that we need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'The goal posts have been moved.  All associates now should', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'The marketing department would like you to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'The person I promote to management will have the ability to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'The quality team will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'There is a good reason why no executives lost their jobs in the last downsizing.  They', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Think! ... And you shall', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To achieve value multiplicity, we must endeavor to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To avoid decruitment,', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To boost morale, all associates will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To effectively fulcrum our team synergy, we should', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To effectively solution a paradigm, you need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To get traction in this space, we will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To improve communications with management, please', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To keep ahead of the competition, we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'To rebuild customer confidence, we must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Together we have to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Together, we will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Unilaterally, we should', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Until morale improves, you will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We are at DEFCON 1, so you must', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We are going to push the envelope and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "We can't fulcrum the paradigm unless you", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We must seize the moment and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We shall boldly move ahead and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We will be the first on the block to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We will circle the wagons and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We will endeavor to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'We will strive to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "We'll put the'dot'in'dot-com'when we", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "We're leaving money on the table unless we", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'What can you do for your company?  For starters, you can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'While leveraging synergy across multimedia paradigms, we need to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'While you waste time serving our customers, our executive staff will', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Work smarter, not harder!  And to start, you can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'You are a mere tactical plebe.  Only a VP such as myself can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'You are being assigned to a revenue mentor so you can', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'You can show your appreciation for your manager.  One way is to', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'You could be an executive too, if only you would', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'You have a bad attitude.  Now, start contributing and', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'You will never be a manager unless you', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Your managers are NOT oxygen wasters.  After all, they', {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", "Your manager's manager will be impressed if you", {nx: true}
redis.set "corporate:prefixes:#{redis.incr('corporate:prefixes:counter')}", 'Your performance review will include observations on how well you', {nx: true}


redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'abridge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'abstract', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'accelerate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'accent', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'accept', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'acquire', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'act on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'action', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'adjust', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'administer', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'advance', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'aggregate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'alliance', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'allure', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'amass', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'anticipate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'architect', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'assimilate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'assure', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'attain', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'attract', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'attune', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'augment', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'augmentize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'author', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'back-burner', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'basis', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'benchmark', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'blend', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'blueprint', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'bolster', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'bottom-line', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'brand', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'break loose', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'breed', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'bridge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'broker', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'build bridges across', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'build', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'burn a focus spot into', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'buy into', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'capitalize on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'carve', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'centralize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'charge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'chart', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'checkpoint', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'circumscribe', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'circumvent', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'cite', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'click and stick', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'close in on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'close', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'coalesce', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'collect', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'combine', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'combine', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'command', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'commit', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'compile', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'compound', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'concur with', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'condense', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'configure', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'conjure', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'consider', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'consolidate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'constitute', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'consummate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'converge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'convoke', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'cull', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'cultivate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'cut and paste', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'debit', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'defend', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'deliver', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'delve into', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'demand', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'deploy', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'derive', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'design', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'designate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'detail', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'develop', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'devise', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'diagram', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'dictate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'digitize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'dilate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'dimensionalize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'direct', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'discover', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'distance ourselves from', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'diversify', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'document', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'dominate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'downsize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'dress-rehearse', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'drill down to', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'drive', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'e-complish', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'e-cumulate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'e-deliver', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'edify', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'e-discuss', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'effect', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'embellish', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'embody', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'embrace', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'emerge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'emphasize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'empower', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'enable', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'e-nable', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'engage', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'engineer', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'enhance', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'enjoin', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'enlighten', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ennoble', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ensure', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'envision', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'epitomize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'establish', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'evangelize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'evoke', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'e-volutionize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'evolve', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'execute', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'exercise', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'expedite', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'exploit', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'explore', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'exponentialize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'extend', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'extol', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'facilitate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'factor', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fathom', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fine-tune', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'focus on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'forestall', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'forge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fortify', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'forward engineer', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'foster', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'found', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fractionate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'frontline', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fulcrum', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'further', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fuse', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fusion', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'fusionize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'future-proof', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'gamify', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'generate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'generate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'get the mean deviation of', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'get', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'give birth to', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'give life to', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'graph', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'grow', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'guide', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'hand off', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'harbor', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'harbor', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'harmonize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'harness', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'harvest', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'hasten', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'have a hand in', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'hone', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'horizontalize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'host', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ignite', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'illuminate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'implement', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'incentivize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'incorporate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'incubate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'induce', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'influence', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'inherit', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'initiate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'innovate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'innovent', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'integrate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'intensify', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'interpolate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'introduce', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'intuitivize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'invent', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'invest ourselves in', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'invoke', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'kick off', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'lead the industry with', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'leap into', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'leverage', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'litmus test', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'machinate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'mainstream', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'make a religion of', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'map the course for', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'map', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'market-test', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'marshal', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'mastermind', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'materialize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'maximize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'merge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'merge', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'mesh', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'midwife', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'migrate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'move on to', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'mull over', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'muster', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'nail down', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'navigate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'net out', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'network', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'noodle', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'observe', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'offload', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'offshoot', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'open', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'open-think', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'opportunity', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'optimize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'orchestrate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'organize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'overcome inertia on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'over-deploy', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'over-engineer', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'over-think', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'overwhelm', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'parse', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'partnership', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'pave the road to', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'pencil in', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'perceive', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'perfect', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ping', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'pinpoint', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'pipeline', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'plan', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'plot', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'polarize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'polish', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ponder', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'populate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'prepare a report on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'prepare', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'promote', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'propose', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'provide', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'provision', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'pursue', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'purvey', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'push the envelope on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'put a price on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'quarterback', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ramp up', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'reach for', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ready', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'realign', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'realize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'realize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'reap', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'recognize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 're-content', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 're-deploy', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'refine', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'regulate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'reinvent', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'relate to', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'remedy', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'render', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'renew our commitment to', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'rescue', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'research', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'respect', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'revamp', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'revenuize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'revisit', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'revolutionize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'rightsize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'rock', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'rotate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'rule', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'ruminate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'safeguard', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'salute', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'scale', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'schedule', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'screen', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'scrutinize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'sectorize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'seduce', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'seize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'seize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'self-direct', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'service', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'set standards for', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'shape', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'shepard', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'sideline', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'sign off on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'smoke out', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'snapshot', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'solidify', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'solution', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'solutionize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'sow', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'spreadsheet', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'springboard', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'story-tell', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'strategize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'streamline', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'strengthen', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'stress', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'strip-mine', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'structure', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'summarize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'superinduce', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'supplement', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'surgically target', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'sustain', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'synchronize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'syndicate', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'synergize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'synopsize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'take ownership on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'target', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'thumbnail', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'thunk', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'transcend', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'trailblaze', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'transform', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'transition', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'transpose', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'trim', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'tune', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'turn the page on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'unify', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'unite', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'unleash', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'upgrade', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'upspeak', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'upthink', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'usher in', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'utilize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'value', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'virtualize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'visualize', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'voice', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'weave', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'weigh', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'weight', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'welcome', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'welcome', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'whiteboard', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'write the book on', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'wrought', {nx: true}
redis.set "corporate:verbs:#{redis.incr('corporate:verbs:counter')}", 'action-forward', {nx: true}

# LEGAL
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'closed-door', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'co-branded', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'collateral', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'collective', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'committed', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'compiled', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'confidential', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'cool', {nx: true}
redis.set "legal:adjectives:#{redis.incr('legal:adjectives:counter')}",'strategic', {nx: true}

redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}",'the', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}",'the best', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", "our firm's", {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", "the competition's", {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", "the client's", {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'the matrix of', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'the most', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'the cost of', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", "tomorrow's", {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'unplugged', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'virtual', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'visible', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'warehouses full of', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'your', {nx: true}

redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}",'characteristics', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}" ,'circles of influence', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'client expectations', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'client criticalities', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'client engagements', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'client preferences', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'client sensibilities', {nx: true}
redis.set "legal:connectors:#{redis.incr('legal:connectors:counter')}", 'billable hours', {nx: true}

redis.set "legal:prefixes:#{redis.incr('legal:prefixes:counter')}", 'According to THE PARTY OF THE FIRST PART', {nx: true}
redis.set "legal:prefixes:#{redis.incr('legal:prefixes:counter')}",' Wherein', {nx: true}
redis.set "legal:prefixes:#{redis.incr('legal:prefixes:counter')}",' Whereas', {nx: true}
redis.set "legal:prefixes:#{redis.incr('legal:prefixes:counter')}",' Hitherto known', {nx: true}

redis.set "legal:verbs:#{redis.incr('legal:verbs:counter')}", 'demand', {nx: true}
redis.set "legal:verbs:#{redis.incr('legal:verbs:counter')}", 'attach', {nx: true}
redis.set "legal:verbs:#{redis.incr('legal:verbs:counter')}", 'subpena', {nx: true}
redis.set "legal:verbs:#{redis.incr('legal:verbs:counter')}", 'create', {nx: true}
redis.set "legal:verbs:#{redis.incr('legal:verbs:counter')}", 'consruct', {nx: true}
